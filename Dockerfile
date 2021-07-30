FROM selenium/node-chrome:3.6.0


RUN -d -p 4444:4444 -p 7900:7900 --shm-size="2g" selenium/standalone-chrome:4.0.0-rc-1-prerelease-20210713
