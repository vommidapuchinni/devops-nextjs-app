# syntax=docker/dockerfile:1

### Builder stage
FROM node:18-alpine AS builder
WORKDIR /app

# copy package manifests first (cache npm install)
COPY package*.json ./
RUN npm ci

# copy everything and build
COPY . .
RUN npm run build

### Runner stage
FROM node:18-alpine AS runner
WORKDIR /app
ENV NODE_ENV=production

# copy production files
COPY --from=builder /app/package*.json ./
# copy node_modules from builder to avoid re-install in runner
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/.next ./.next
COPY --from=builder /app/public ./public

EXPOSE 3000

# start server
CMD ["npm", "run", "start"]
