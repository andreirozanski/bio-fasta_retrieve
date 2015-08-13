# bio-fasta_retrieve
== bio-fasta_retriever

Ruby Gem that helps to retrieve DNA sequence from UCSC
The idea is to offer a solution for fast DNA sequence retrieve.

== Installation

'gem install bio-fasta_retriever'

==Usage 

It is necessary:

	organism = hg19, mm9, rn5, c6, etc.
	chromosome = chr1, chrII, etc.
	start coordinate = 1000 
	end coordinate = 2000

FastaRetriever::Retriever.retrieve("hg19","chr1","10000","10500")

>hg19_chr1_10000_10500
ntaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccctaaccc
taaccctaaccctaaccctaaccctaaccctaaccctaacccaaccctaaccctaaccctaacccta
accctaaccctaacccctaaccctaaccctaaccctaaccctaacctaaccctaaccctaaccctaa
ccctaaccctaaccctaaccctaaccctaacccctaaccctaaccctaaaccctaaaccctaaccct
aaccctaaccctaaccctaaccccaaccccaaccccaaccccaaccccaaccccaaccctaacccct
aaccctaaccctaaccctaccctaaccctaaccctaaccctaaccctaaccctaacccctaacccct
aaccctaaccctaaccctaaccctaaccctaaccctaacccctaaccctaaccctaaccctaaccct
cgcggtaccctcagccggcccgcccgcccggg


