# Copyright::   Copyright (C) 2015
#               Andrei Rozanski <rozanski.andrei@gmail.com>
# License::     The Ruby License
# == Description
# This file containts DNA sequence retriever from UCSC that outputs Bio::Sequence object

#Define module FastaRetriever
module FastaRetriever
  class Retriever

	require 'bio' # For creation of fasta object.
	require 'nokogiri' # For sequence retrieve and parse.
 	require 'open-uri' # For sequence retrieve.

    def initialize;end

    #input organism, chromosome, start, end separated by space (i.e. hg19 chr10 1000 2000)
    def self.retrieve(organism,chr,start_coord,end_coord)
      address="http://genome.ucsc.edu/cgi-bin/das/#{organism}/dna?segment=#{chr}:#{start_coord},#{end_coord}"
      xml=ucsc_connect(address)
      seq=compose_fasta(xml,organism,chr,start_coord,end_coord)       
      puts seq
    end # End retrieve

    #connects to ucsc and retrieve xml with DNA sequence
    def self.ucsc_connect(address)
      xml = Nokogiri::XML(open(address))
      xml_res=parse_xml(xml)
      return xml_res
    end # End ucsc_connect

    #parse sequence from xml
    def self.parse_xml(xml)
      xml_res=xml.xpath("//DNA").text.tr("\n","")
      return xml_res
    end # End parse_xml

    def self.compose_fasta(sequence,organism,chr,start_coord,end_coord)
      seq=Bio::Sequence::NA.new(sequence)
      seq_res=seq.to_fasta("#{organism}_#{chr}_#{start_coord}_#{end_coord}")
      return seq_res
    end # End compose_fasta

  end # End Class Retriever
end # End Module FastaRetriever

 
