# SAPMachine Docker image on Alpine
This Docker image provides a lightweight version of the SAP JDK on the Alpine Linux distribution.

# Purpose
The purpose of this image is to provide a lighter-weight option for running Java applications in Docker containers. The Alpine Linux distribution is a very small and efficient Linux distribution, making it ideal for containerized environments.

> SAP does not offer an official SAPMachine image on Alpine, just for Ubuntu. The reason for this is that SAPMachine is a relatively new and SAP is still working on its support for other distributions.

However, this image provides a viable option for users who want to run Java applications in lightweight Docker containers.

# Instructions
You can pull it from a public registry like Docker Hub. To do this, use the following command:
```bash
docker pull wyeks/sapmachine-alpine:sapmachine-17.0.11
```

This will download the wyeks/sapmachine-alpine image from Docker Hub.

Once you have pulled the image, you can run it using the following command:
```bash
docker run -it wyeks/sapmachine-alpine:sapmachine-17.0.11
```

# Feedback
If you have any feedback or suggestions about this image, please feel free to submit them.
