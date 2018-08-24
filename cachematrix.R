## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(matrix = matrix()) {
  # store inverse value
  inverse <- NULL
  
  # set the original matrix and reset inverse
  set <- function(y) {
    matrix <<- y
    inverse <<- NULL
  }
  
  # get the original matrix
  get <- function() matrix
  # set inverse value
  set_inverse <- function(inv) inverse <<- inv
  # get inverse value
  get_inverse <- function() inverse
  
  # Returns a list of the 4 functions, this list is the special "matrix"
  list(set = set, get = get,
       set_inverse = set_inverse,
       get_inverse = get_inverse)
}