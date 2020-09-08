FROM circleci/android:api-28

RUN sudo apt-get update && \
    cd /tmp && wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.7.1.tar.gz && \
    tar -xzvf ruby-install-0.7.1.tar.gz && \
    cd ruby-install-0.7.1 && \
    sudo make install && \
    ruby-install --cleanup ruby 2.7.1 && \
    rm -r /tmp/ruby-install-* && \
    sudo rm -rf /var/lib/apt/lists/*

ENV PATH ${HOME}/.rubies/ruby-2.7.1/bin:${PATH}
RUN echo 'gem: --env-shebang --no-rdoc --no-ri' >> ~/.gemrc && gem install bundler
