
class BucketController < ApplicationController
    def index
      @buckets = AWS::S3::Service.buckets
    end
end