% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02_ClassSpecificFunction.R
\name{lengthProduct,ProteinCodingGene-method}
\alias{lengthProduct,ProteinCodingGene-method}
\title{Length of protein product}
\usage{
\S4method{lengthProduct}{ProteinCodingGene}(gene)
}
\arguments{
\item{gene}{An object of class ProteinCodingGene.}
}
\value{
The length of the protein sequence.
}
\description{
Method for ProteinCodingGene to get the length of the protein sequence.
}
\examples{
# example code for the Length Product for ProteinCodingGene:
pc_gene <- new("ProteinCodingGene",
  name = "Protein Coding Gene", ID = "gene2", sym = "GEN2",
  chr = "X", start = 200, end = 6000,
  desc = "Some protein coding gene",
  product = list(proteinID = "P002", proteinSeq = "MEEPQSDPSV"))
lengthProduct(pc_gene)
}
