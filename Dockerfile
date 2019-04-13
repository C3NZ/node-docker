# Specify the image to build from
FROM node:11
# Create the application directory
WORKDIR /usr/src/app
# Copy the package json files (both the package & package-lock)
COPY package*.json ./
# Install our packages
RUN npm install
# copy the source code into the WORK DIRECTORY
COPY . .
# expose the port that the app is listening on
EXPOSE 8080
# Execute the npm command 
CMD ["npm", "start"]
