#' @import methods GenomicRanges
NULL

# R/classes.R

#' Gene Class
#'
#' A virtual class to represent a gene with basic slots.
#'
#' @slot id Gene ID (e.g., Ensembl or NCBI).
#' @slot symbol Gene symbol (e.g., HUGO symbol).
#' @slot name Gene name.
#' @slot description Description of the gene.
#' @slot structure Genomic structure (chromosome, start, end, strand, exons).
#' @slot product List to store gene product(s).
#' @export
setClass(
  "Gene",
  contains = "VIRTUAL",
  slots = list(
    id = "character",
    symbol = "character",
    name = "character",
    description = "character",
    chromosome = "character",
    start = "numeric",
    end = "numeric",
    product = "list"
  )
)

#' ProteinCodingGene Class
#'
#' A class to represent a protein-coding gene.
#'
#' @slot proteinID Protein ID.
#' @slot proteinSeq Protein sequence.
#' @export
setClass(
  "ProteinCodingGene",
  contains = "Gene",
  slots = list(
    proteinID = "character",
    proteinSeq = "character"
  )
)

#' LncRNAGene Class
#'
#' A class to represent a long non-coding RNA gene.
#'
#' @slot lncRNAID lncRNA ID.
#' @slot RNASeq RNA sequence.
#' @export
setClass(
  "lncRNAGene",
  contains = "Gene",
  slots = list(
    lncRNAID = "character",
    RNASeq = "character"
  )
)

#' microRNAGene Class
#'
#' A class to represent a microRNA gene.
#'
#' @slot microRNAID MicroRNA ID.
#' @slot seedSeq Seed sequence of microRNA.
#' @export
setClass(
  "microRNAGene",
  contains = "Gene",
  slots = list(
    microRNAID = "character",
    seedSeq = "character"
  )
)
