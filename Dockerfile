FROM circleci/android:api-28
RUN gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN \curl -sSL https://get.rvm.io | bash -s stable
RUN /home/circleci/.rvm/bin/rvm install 2.7.1
RUN rm -r ~/.rubies/ruby-2.6.1
ENV PATH="/home/circleci/.rvm/gems/ruby-2.7.1/bin:/home/circleci/.rvm/gems/ruby-2.7.1@global/bin:/home/circleci/.rvm/rubies/ruby-2.7.1/bin:$PATH"
ENV GEM_HOME='/home/circleci/.rvm/gems/ruby-2.7.1'
ENV GEM_PATH='/home/circleci/.rvm/gems/ruby-2.7.1:/home/circleci/.rvm/gems/ruby-2.7.1@global'
ENV MY_RUBY_HOME='/home/circleci/.rvm/rubies/ruby-2.7.1'
ENV IRBRC='/home/circleci/.rvm/rubies/ruby-2.7.1/.irbrc'
ENV RUBY_VERSION='ruby-2.7.1'
