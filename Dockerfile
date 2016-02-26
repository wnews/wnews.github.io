FROM ruby:2.0

WORKDIR /srv/jekyll
EXPOSE 4000 80

COPY Gemfile ./

RUN bundle install

COPY _config.yml index.html favicon.ico ./
COPY _posts ./_posts/
COPY _layouts ./_layouts/
COPY _includes ./_includes/
COPY _sass ./_sass/
COPY css ./css/
COPY images ./images/


CMD ["jekyll", "serve"]
