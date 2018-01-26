FROM solarkennedy/wine-x11-novnc-docker

# Install wine and related packages
RUN dpkg --add-architecture i386 \
&& apt-get update \
&& apt-get install -y --no-install-recommends \
wine \
&& rm -rf /var/lib/apt/lists/*

# Use the latest version of winetricks
RUN curl -SL 'https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks' -o /usr/local/bin/winetricks \
&& chmod +x /usr/local/bin/winetricks

ENV XFB_SCREEN 1024x768x24
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN echo "alias winegui='wine explorer /desktop=DockerDesktop,1024x768'" > ~/.bash_aliases
