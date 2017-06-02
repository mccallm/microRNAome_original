\name{microRNAome}
\alias{microRNAome}
\docType{data}
\title{MicroRNAome Data}
\description{Read counts per miRNA for the microRNAome collection of 
RNA-Seq experiments}
\details{
New small RNA-seq data from 39 primary cells obtained by culture, flow 
cytometry or centrifugation were augmented with Sequence Read Archive (SRA)
small RNA-seq read data from 496 samples with over 1 million microRNA reads. 
These were primary cell cultures, immortalized/cancer cell lines or normal 
tissues. All samples were processed through miRge (Baras et al. 2015), which 
uses modified microRNA libraries and multiple Bowtie steps for optimal 
alignments on multiplexed runs. From an initial 2546 microRNAs across 535
samples, we retained the 2131 microRNAs with non-zero expression in at least 5 
samples and the 528 samples that were of acceptable quality.  
}
\usage{
data("microRNAome")
}
\format{SummarizedExperiment}
\source{Read count matrix prepared and provided by authors of the study}
\references{Towards the human cellular microRNAome
Matthew N McCall, Min-Sik Kim, Mohammed Adil, Arun H Patil, Yin Lu, 
Christopher J Mitchell, Pamela Leal-Rojas, Jinchong Xu, Manoj Kumar, 
Valina L Dawson, Ted M Dawson, Alexander S Baras, Avi Z Rosenberg, 
Dan E Arking, Kathleen H Burns, Akhilesh Pandey, Marc Halushka. 
doi: https://doi.org/10.1101/120394}
\examples{
data(microRNAome)
## the microRNAome SummarizedExperiment object contains only one matrix
## in the assays field: a matrix of miRNA counts
names(assays(microRNAome))
assays(microRNAome)$counts[1:3,1:3]
\keyword{datasets}
