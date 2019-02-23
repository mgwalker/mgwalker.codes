FROM jekyll/jekyll:3

RUN mkdir /project
WORKDIR /project

ADD ./Gemfile .
ADD ./Gemfile.lock .

RUN bundle install

CMD jekyll serve --host 0.0.0.0