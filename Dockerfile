FROM selenium/base:4.0.0-rc-1-prerelease-20210713
LABEL authors=SeleniumHQ

USER 1200

#========================
# Selenium Standalone Docker Configuration
#========================

EXPOSE 4444

COPY start-selenium-grid-standalone-docker.sh \
    config.toml \
    /opt/bin/

COPY selenium-grid-standalone-docker.conf /etc/supervisor/conf.d/

# Boolean value, maps "--relax-checks"
ENV SE_RELAX_CHECKS true