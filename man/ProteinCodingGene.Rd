% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/01_Constructor.R
\name{ProteinCodingGene}
\alias{ProteinCodingGene}
\title{ProteinCodingGene Constructor}
\usage{
ProteinCodingGene(name, ID, sym, chr, start, end, desc, proteinID, proteinSeq)
}
\arguments{
\item{name}{Gene name.}

\item{ID}{Gene ID.}

\item{sym}{Gene symbol.}

\item{chr}{Gene Chromosome.}

\item{start}{Gene Start.}

\item{end}{Gene End.}

\item{desc}{Gene description.}

\item{proteinID}{Protein ID.}

\item{proteinSeq}{Protein sequence.}
}
\value{
A new ProteinCodingGene object.
}
\description{
Creates a new ProteinCodingGene object.
}
\examples{
# example code for creating a ProteinCodingGene object
tp53 <- ProteinCodingGene(
    name = "TP53 gene",
    ID = "ENSG00000141510",
    sym = "TP53",
    chr = "chr17",
    start = 7668402,
    end = 7687550,
    desc = "Tumor protein p53",
    proteinID = "P04637",
    proteinSeq = "MAQEGTNLRVEYLDDLRNGNRK"
)
print(tp53)
}
