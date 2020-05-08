### [Redis Server](https://github.com/BU-NU-CLOUD-F19/Interoperable_Container_Runtime/wiki/Configuring-network-with-runc:-redis-container)

```
    i. 	  cd ~/criu-demos/runc/redis && sudo runc run -d eureka &> /dev/null < /dev/null
    ii.   sudo netns ls
    iii.  redis-cli -h <IP>
    iv.   redis> SET mykey "hello"
    v.    sudo runc checkpoint eureka
    // observe that the container has disappeared, (not stopped) hence allowing for transparent migration
    // rather than havng to deal with container names around (docker)
    vi.   sudo runc restore -d eureka &> /dev/null < /dev/null
    vii.  redis-cli -h <IP> // note that it is a new one
    viii. GET mykey
```
