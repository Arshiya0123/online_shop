 # Base image
 FROM node:18-slim
 
# working directory
WORKDIR /app
  
# copy package.json
COPY  package*.json ./


# Install all dependencies(including vite) 
RUN npm install

# copy the rest of app's code
COPY . .

# Expose the running port 
EXPOSE 3000

# serve the app
CMD ["npm","run","dev"]

