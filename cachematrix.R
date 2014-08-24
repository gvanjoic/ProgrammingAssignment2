## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(cache_matrix = matrix()) {
inverse_matrix<-NULL ## the result will be obtained from this matrix
set<-function(input_matrix){
  cache_matrix<<-input_matrix
  inverse_matrix<<-NULL
}
get<-function() cache_matrix
setmatrix<-function(solve) inverse_matrix<<-solve
getmatrix<-function() inverse_matrix
list(set=set,get=get,setmatrix=setmatrix,getmatrix=getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(cache_matrix, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse_matrix<-cache_matrix$getmatrix()
  if(!is.null(inverse_matrix)){
    message("getting cached data")
    return (inverse_matrix)
  }
  matrix<-cache_matrix$get()
  inverse_matrix<-solve(matrix,...)
  cache_matrix$setmatrix(inverse_matrix)
  inverse_matrix
}
