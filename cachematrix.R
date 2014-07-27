## Put comments here that give an overall description of what your
## functions do

#### These two functions compute and/or retrieve the inverse of a matrix ####

##This function computes the inverse of x, which is a matrix, and caches it. 
## It also caches the input given for x

makeCacheMatrix <- function(x = matrix()) {
	inverse_matrix<<- solve(x)
	m<<-x
}



## This function checks whether the makeCacheMatrix has been used before, 
## whether the the input for x is identical to the input previously given in 
##the makeCacheMatrix, and if so, whther the inverse_matrix has been computed.
## If this all is TRUE, than it retrieves the inverse of the matrix from the 
## cache, otherwise it computes it and returns it at the end of the function. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	matrix<-x
	if (exists("m")== TRUE){
		if (all.equal(matrix,m)==TRUE){
				if (!is.null(inverse_matrix)){
				message ("getting cached data")
 			}else{
			inverse_matrix<-solve(matrix)
			}
		}else{
			inverse_matrix<-solve(matrix)
		}
	}else{
	inverse_matrix<-solve(matrix)
	}
	inverse_matrix
}


