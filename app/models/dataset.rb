require 'couchrest_model'

class Dataset < CouchRest::Model::Base
  use_database CouchRest.database('http://civicapi.couchone.com/civicapi/')
  # 'http://civicapi.couchone.com/civicapi/_design/civicapi/_list/datasets/all'
  
  property :title,        String
  property :description,  String
  property :categories,    [String] 
  property :tags,         [String]
  property :creator,      String
  property :publisher,    String
  property :contributors, [String]
  property :type,         String
  property :format,       String
  property :identifier,   String
  property :source,       String
  property :language,     String
  property :relation,     String
  property :coverage,     String
  property :rights,       String
  
  timestamps!
  
  view_by :title

end
