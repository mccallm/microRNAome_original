test_data <- function(){
    data(microRNAome)
    checkEqualsNumeric(dim(microRNAome), c(2131, 528))
    checkEqualsNumeric(dim(colData(microRNAome)), c(528, 14))
    checkEqualsNumeric(assay(microRNAome)[5,5], 246)
    checkEquals(colnames(assay(microRNAome)), colData(microRNAome)$SRA_number)
}
