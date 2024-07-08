#R/01_Constructor.R

#' @import methods
#' @import GenomicRanges
NULL

#' ProteinCodingGene Constructor
#'
#' Creates a new ProteinCodingGene object.
#'
#' @param name Gene name.
#' @param ID Gene ID.
#' @param sym Gene symbol.
#' @param chr Gene Chromosome.
#' @param start Gene Start.
#' @param end Gene End.
#' @param desc Gene description.
#' @param proteinID Protein ID.
#' @param proteinSeq Protein sequence.
#' @return A new ProteinCodingGene object.
#' @examples
#' # example code for creating a ProteinCodingGene object
#' tp53 <- ProteinCodingGene(
#'     name = "TP53 gene",
#'     ID = "ENSG00000141510",
#'     sym = "TP53",
#'     chr = "chr17",
#'     start = 7668402,
#'     end = 7687550,
#'     desc = "Tumor protein p53",
#'     proteinID = "P04637",
#'     proteinSeq = "MAQEGTNLRVEYLDDLRNGNRK"
#' )
#' print(tp53)
#' @export
ProteinCodingGene <- function(name, ID, sym, chr, start, end,
                                desc, proteinID, proteinSeq) {
    if (!is.character(name) || !is.character(ID) || !is.character(sym) ||
        !is.character(chr) || !is.numeric(start) ||
        !is.numeric(end) || !is.character(desc) ||
        !is.character(proteinID) || !is.character(proteinSeq)) {
    stop("Invalid input data types!")}
    new("ProteinCodingGene",
        name = name,
        ID = ID,
        sym = sym,
        chr = chr,
        start = start,
        end = end,
        desc = desc,
        product = list(proteinID = proteinID, proteinSeq = proteinSeq))
}

#' LncRNAGene Constructor
#'
#' Creates a new LncRNAGene object.
#'
#' @param name Gene name.
#' @param ID Gene ID.
#' @param sym Gene symbol.
#' @param chr Gene chromosome.
#' @param start Gene start position.
#' @param end Gene end position.
#' @param desc Gene description.
#' @param lncRNAID lncRNA ID.
#' @param RNASeq RNA sequence.
#' @return A new LncRNAGene object.
#' @examples
#' # example code for creating a LncRNAGene object:
#' lncRNA_gene2 <- lncRNAGene(
#'     name = "NEAT1 gene",
#'     ID = "ENSG00000276085",
#'     sym = "NEAT1",
#'     chr = "chr11",
#'     start = 65497758,
#'     end = 65503100,
#'     desc = "Nuclear Paraspeckle Assembly Transcript 1",
#'     lncRNAID = "ENST00000463720",
#'     RNASeq = "GUCCAUCGGGUCCUCGAGAGCUUAGAGUU"
#' )
#' print(lncRNA_gene2)
#' @export
lncRNAGene <- function(name, ID, sym, chr, start, end,
                        desc, lncRNAID, RNASeq) {
    if (!is.character(name) || !is.character(ID) || !is.character(sym) ||
        !is.character(chr) || !is.numeric(start) || !is.numeric(end) ||
        !is.character(desc) || !is.character(lncRNAID) ||
        !is.character(RNASeq)) {
    stop("Invalid input data types!")}
    new("lncRNAGene",
        name = name,
        ID = ID,
        sym = sym,
        chr = chr,
        start = start,
        end = end,
        desc = desc,
        product = list(lncRNAID = lncRNAID, RNASeq = RNASeq))
}

#' MicroRNAGene Constructor
#'
#' Creates a new MicroRNAGene object.
#'
#' @param name Gene name.
#' @param ID Gene ID.
#' @param sym Gene symbol.
#' @param chr Gene chromosome.
#' @param start Gene start position.
#' @param end Gene end position.
#' @param desc Gene description.
#' @param microRNAID microRNA ID.
#' @param microRNASeq seed sequence of microRNA.
#' @return A new MicroRNAGene object.
#' @examples
#' # example code for creating a MicroRNAGene object:
#' miRNA_gene <- microRNAGene(
#'     name = "miR-155 gene",
#'     ID = "ENSG00000277483",
#'     sym = "MIR155",
#'     chr = "chr21",
#'     start = 25575833,
#'     end = 25575902,
#'     desc = "microRNA 155",
#'     microRNAID = "MI0000681",
#'     microRNASeq = "UUAAUGCUAAUUGUGAUAGGGGU"
#' )
#' print(miRNA_gene)
#' @export
microRNAGene <- function(name, ID, sym, chr, start, end,
                        desc, microRNAID, microRNASeq) {
    if (!is.character(name) || !is.character(ID) || !is.character(sym) ||
        !is.character(chr) || !is.numeric(start) || !is.numeric(end) ||
        !is.character(desc) || !is.character(microRNAID) ||
        !is.character(microRNASeq)) {
    stop("Invalid input data types!")}
    new("microRNAGene",
        name = name,
        ID = ID,
        sym = sym,
        chr = chr,
        start = start,
        end = end,
        desc = desc,
        product = list(microRNAID = microRNAID, microRNASeq = microRNASeq))
}
