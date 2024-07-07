# R/methods.R

#' Length of gene product
#'
#' Generic function to get the length of the gene product.
#'
#' @param gene An object of class Gene.
#' @return The length of the gene product.
#' @examples
#' # example code for the Lenght Product of an object of class Gene:
#' gene <- new("ProteinCodingGene",
#'   id = "gene1", symbol = "SYM1", name = "Gene One",
#'   description = "Description here", chromosome = "1",
#'   start = 100, end = 5000,
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
#' # example code for the Lenght Product of an object of class ProteinCodingGene:
#' pc_gene <- new("ProteinCodingGene",
#'   id = "gene2", symbol = "GEN2", name = "Protein Coding Gene",
#'   description = "Some protein coding gene", chromosome = "X",
#'   start = 200, end = 6000,
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
#' # example code for the Lenght Product of an object of class LncRNAGene:
#' lnc_gene <- new("lncRNAGene",
#'   id = "gene3", symbol = "LNC1", name = "LncRNA Gene",
#'   description = "A long non-coding RNA gene", chromosome = "11",
#'   start = 300, end = 7000,
#'   product = list(lncRNAID = "LNC001", RNASeq = "UUGUUCGACUGA"))
#' lengthProduct(lnc_gene)
#' @export
setMethod("lengthProduct", "lncRNAGene", function(gene) {
  nchar(gene@product$RNASeq)
})

#' Length of microRNA product
#'
#' Method for MicroRNAGene to get the length of the seed sequence.
#'
#' @param gene An object of class MicroRNAGene.
#' @return The length of the seed sequence.
#' @examples
#' # example code for the Length Product of an object of class MicroRNAGene:
#' mir_gene <- new("microRNAGene",
#'   id = "gene4", symbol = "MIR1", name = "MicroRNA Gene",
#'   description = "A microRNA gene", chromosome = "21",
#'   start = 400, end = 8000,
#'   product = list(microRNAID = "MIR001", seedSeq = "ACGUACGUGA"))
#' lengthProduct(mir_gene)
#' @export
setMethod("lengthProduct", "microRNAGene", function(gene) {
  nchar(gene@product$seedSeq)
})

