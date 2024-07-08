#' @import methods GenomicRanges
NULL

# R/00_Classes.R

#' Gene Class
#'
#' A virtual class to represent a gene with basic slots.
#'
#' @slot name Gene name
#' @slot ID Gene ID (e.g., Ensembl or NCBI).
#' @slot sym Gene symbol (e.g., HUGO symbol).
#' @slot chr Gene chromosome
#' @slot start Gene sequence
#' @slot end Gene sequence
#' @slot desc Description of the Gene.
#' @slot product List to store Gene product(s).
#' @export
setClass(
    "Gene",
    contains = "VIRTUAL",
    slots = list(
        name = "character",
        ID = "character",
        sym = "character", # Symbol
        chr = "character", # Chromosome
        start = "numeric",
        end = "numeric",
        desc = "character", # Description
        product = "list")
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
#' @slot microRNASeq sequence of microRNA.
#' @export
setClass(
    "microRNAGene",
    contains = "Gene",
    slots = list(
        microRNAID = "character",
        microRNASeq = "character"
        )
)
