FROM ruby:2.7.0

#必要なパッケージのインストール
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs
#作業ディレクトリの作成
RUN mkdir /time_records

#作業ディレクトリをAPP_ROOTに割り当てる
ENV APP_ROOT /time_records
WORKDIR $APP_ROOT

ADD ./Gemfile $APP_ROOT/Gemfile
ADD ./Gemfile.lock $APP_ROOT/Gemfile.lock

#Gemfileのbundle installを実行
RUN bundle install
ADD . $APP_ROOT