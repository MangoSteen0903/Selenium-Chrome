FROM selenium/node-chrome:4.0.0-rc-1-prerelease-20210713
LABEL authors=SeleniumHQ

USER 1200

#====================================
# Scripts to run Selenium Standalone
#====================================
COPY start-selenium-standalone.sh /opt/bin/start-selenium-standalone.sh

#==============================
# Supervisor configuration file
#==============================
COPY selenium.conf /etc/supervisor/conf.d/

# Copying configuration script generator
COPY generate_config /opt/bin/generate_config

# Boolean value, maps "--relax-checks"
ENV SE_RELAX_CHECKS true

EXPOSE 4444
RUN echo "chrome" > /opt/selenium/browser_name