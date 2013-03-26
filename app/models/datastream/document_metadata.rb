class Datastream::DocumentMetadata < ActiveFedora::OmDatastream
  
  set_terminology do |t|
    t.root(path: "fields")
    t.year index_as: [:stored_searchable, :facetable, :dateable]
    t.title index_as: [:stored_searchable, :facetable]
    t.corpus_name index_as: [:stored_searchable, :facetable]
    t.sub_corpus_name index_as: [:stored_searchable, :facetable]
    t.media_type index_as: [:stored_searchable, :facetable]
    t.url index_as: :displayable
  end

  def self.xml_template
    Nokogiri::XML.parse("<fields/>")
  end

end
