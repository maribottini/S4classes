# R/02_ClassSpecificFunction.R

#' Length of gene product
#'
#' Generic function to get the length of the gene product.
#'
#' @param gene An object of class Gene.
#' @return The length of the gene product.
#' @examples
#' # example code for the Length Product of an object of class Gene:
#' gene <- new("ProteinCodingGene",
#'   name = "Gene One", ID = "gene1", sym = "SYM1",
#'   chr = "1", start = 100, end = 5000,
#'   desc = "Description here",
#'   product = list(proteinID = "P001", proteinSeq = "MKTFFIVATVILFWP"))
#' lengthProduct(gene)
#' @export
setGeneric("lengthProduct", function(gene) standardGeneric("lengthProduct"))

#' Length of protein product
#'
#' Method for ProteinCodingGene to get the length of the protein sequence.
#'
#' @param gene An object of class ProteinCodingGene.
#' @return The length of the protein sequence.
#' @examples
#' # example code for the Length Product for ProteinCodingGene:
#' pc_gene <- new("ProteinCodingGene",
#'   name = "Protein Coding Gene", ID = "gene2", sym = "GEN2",
#'   chr = "X", start = 200, end = 6000,
#'   desc = "Some protein coding gene",
#'   product = list(proteinID = "P002", proteinSeq = "MEEPQSDPSV"))
#' lengthProduct(pc_gene)
#' @export
setMethod("lengthProduct", "ProteinCodingGene", function(gene) {
    nchar(gene@product$proteinSeq)
})

#' Length of lncRNA product
#'
#' Method for LncRNAGene to get the length of the RNA sequence.
#'
#' @param gene An object of class LncRNAGene.
#' @return The length of the RNA sequence.
#' @examples
#' # example code for the Length Product of an object of class LncRNAGene:
#' lnc_gene <- new("lncRNAGene",
#'   name = "LncRNA Gene", ID = "gene3", sym = "LNC1",
#'   chr = "11", start = 300, end = 7000,
#'   desc = "A long non-coding RNA gene",
#'   product = list(lncRNAID = "LNC001", RNASeq = "UUGUUCGACUGA"))
#' lengthProduct(lnc_gene)
#' @export
setMethod("lengthProduct", "lncRNAGene", function(gene) {
    nchar(gene@product$RNASeq)
})

#' Length of microRNA product
#'
#' Method for MicroRNAGene to get the length of the microRNA sequence.
#'
#' @param gene An object of class MicroRNAGene.
#' @return The length of the microRNA sequence.
#' @examples
#' # example code for the Length Product of an object of class MicroRNAGene:
#' miRNA_gene <- new("microRNAGene",
#'   name = "MicroRNA Gene", ID = "gene4", sym = "MIR1",
#'   chr = "21", start = 400, end = 8000,
#'   desc = "A microRNA gene",
#'   product = list(microRNAID = "MIR001", microRNASeq = "ACGUACGUGA"))
#' lengthProduct(miRNA_gene)
#' @export
setMethod("lengthProduct", "microRNAGene", function(gene) {
    nchar(gene@product$microRNASeq)
})
