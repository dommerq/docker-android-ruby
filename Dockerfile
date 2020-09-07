FROM circleci/android:api-28
RUN ruby-install ruby-2.7.1
RUN cd ~/ && wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz \
  && tar -xzvf chruby-0.3.9.tar.gz \
  && cd chruby-0.3.9/ \
  && sudo make install
