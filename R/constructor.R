#' @import methods
#' @import GenomicRanges
NULL

# R/constructors.R

#' ProteinCodingGene Constructor
#'
#' Creates a new ProteinCodingGene object.
#'
#' @param id Gene ID.
#' @param symbol Gene symbol.
#' @param name Gene name.
#' @param description Gene description.
#' @param chromosome Gene Chromosome.
#' @param start Gene Start.
#' @param end Gene End.
#' @param proteinID Protein ID.
#' @param proteinSeq Protein sequence.
#' @return A new ProteinCodingGene object.
#' @examples
#' # example code for creating a ProteinCodingGene object
#' tp53 <- ProteinCodingGene(
#' id = "ENSG00000141510",
#' symbol = "TP53",
#' name = "TP53 gene",
#' description = "Tumor protein p53",
#' chromosome = "chr17",
#' start = 7668402,
#' end = 7687550,
#' proteinID = "P04637",
#' proteinSeq = "MAQEGTNLRVEYLDDLRNGNRK")
#' print(tp53)
#' @export
ProteinCodingGene <- function(id, symbol, name, description, chromosome, start, end, proteinID, proteinSeq) {
  if (!is.character(id) | !is.character(symbol) | !is.character(name) |
      !is.character(description) | !is.character(chromosome) |
      !is.numeric(start) | !is.numeric(end) |
      !is.character(proteinID) | !is.character(proteinSeq)) {
    stop("Invalid input data types!")
  }
  new("ProteinCodingGene",
      id = id,
      symbol = symbol,
      name = name,
      description = description,
      chromosome = chromosome,
      start = start,
      end = end,
      product = list(proteinID = proteinID, proteinSeq = proteinSeq))
}

#' LncRNAGene Constructor
#'
#' Creates a new LncRNAGene object.
#'
#' @param id Gene ID.
#' @param symbol Gene symbol.
#' @param name Gene name.
#' @param description Gene description.
#' @param chromosome Gene Chromosome.
#' @param start Gene Start.
#' @param end Gene End.
#' @param lncRNAID lncRNA ID.
#' @param RNASeq RNA sequence.
#' @return A new LncRNAGene object.
#' @examples
#' # example code for creating a LncRNAGene object:
#' lncRNA_gene2 <- lncRNAGene(
#' id = "ENSG00000276085",
#' symbol = "NEAT1",
#' name = "NEAT1 gene",
#' description = "Nuclear Paraspeckle Assembly Transcript 1",
#' chromosome = "chr11",
#' start = 65497758,
#' end = 65503100,
#' lncRNAID = "ENST00000463720",
#' RNASeq = "GUCCAUCGGGUCCUCGAGAGCUUAGAGUU")
#' print(lncRNA_gene2)
#' @export
lncRNAGene <- function(id, symbol, name, description, chromosome, start, end, lncRNAID, RNASeq) {
  if (!is.character(id) | !is.character(symbol) | !is.character(name) |
      !is.character(description) | !is.character(chromosome) |
      !is.numeric(start) | !is.numeric(end) |
      !is.character(lncRNAID) | !is.character(RNASeq)) {
    stop("Invalid input data types!")
  }
  new("lncRNAGene",
      id = id,
      symbol = symbol,
      name = name,
      description = description,
      chromosome = chromosome,
      start = start,
      end = end,
      product = list(lncRNAID = lncRNAID, RNASeq = RNASeq))
}

#' MicroRNAGene Constructor
#'
#' Creates a new MicroRNAGene object.
#'
#' @param id Gene ID.
#' @param symbol Gene symbol.
#' @param name Gene name.
#' @param description Gene description.
#' @param chromosome Gene Chromosome.
#' @param start Gene Start.
#' @param end Gene End
#' @param microRNAID microRNA ID.
#' @param seedSeq seed sequence of microRNA.
#' @return A new MicroRNAGene object.
#' @examples
#' # example code for creating a MicroRNAGene object:
#' miRNA_gene <- microRNAGene(
#' id = "ENSG00000277483",
#' symbol = "MIR155",
#' name = "miR-155 gene",
#' description = "microRNA 155",
#' chromosome = "chr21",
#' start = 25575833,
#' end = 25575902,
#' microRNAID = "MI0000681",
#' seedSeq = "UUAAUGCUAAUUGUGAUAGGGGU")
#' print(miRNA_gene)
#' @export
microRNAGene <- function(id, symbol, name, description, chromosome, start, end, microRNAID, seedSeq) {
  if (!is.character(id) | !is.character(symbol) | !is.character(name) |
      !is.character(description) | !is.character(chromosome) |
      !is.numeric(start) | !is.numeric(end) |
      !is.character(microRNAID) | !is.character(seedSeq)) {
    stop("Invalid input data types!")
  }
  new("microRNAGene",
      id = id,
      symbol = symbol,
      name = name,
      description = description,
      chromosome = chromosome,
      start = start,
      end = end,
      product = list(microRNAID = microRNAID, seedSeq = seedSeq))
}
