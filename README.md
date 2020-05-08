### Instructions to run containers using runC

1. Create a new directory for the container
`mdkir ./my-container && cd my-container`

2. Create a root filesystem
`mkdir rootfs`

3. Export the docker image into the root filesystem
`docker export $(docker create <image-tag>) | tar -C rootfs -xvf -`

4. Generate the config file using the OCI runtime tool:
`oci-runtime-tool generate <args>`
