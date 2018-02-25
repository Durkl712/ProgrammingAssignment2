## Put comments here that give an overall description of what your functions do

## so I'm supposed to write two functions, which can store and retrieve the inverse
## of a matrix. 


## Write a short comment describing this function

## MakeCacheMatrix is a list of 4 functions. First is set, which sets the matrix,
## second is get, which gets the matrix,
## third sets the inverse of the matrix
## fourth is getinverse which gives m, the stored inverse of a matrix.
makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      set <- function(y){
            x <<- y
            m <<- NULL
      }
      get <- function() x
      setinverse <- function(solve) m <<- solve
      getinverse <- function()m
      list (set=set, get=get,
            setinverse=setinverse,
            getinverse=getinverse)
}



## Write a short comment describing this function
## this function first checks whether the inverse of a matrix is already computed.
## to do this it sees if m is not null. M is assigned with the universal assignment
## operator in the first function, which is why it can be checked like this here.
## if it has checked and the inverse is present, it returns it from makeCacheMatrix
## if it hasn't, it calls setinverse and sets it. 
cacheSolve <- function(x, ...) {
      m <- x$getinverse()
      if(!is.null(m)){ 
            message("getting inverse of matrix")
            return(m) ## Return a matrix that is the inverse of 'x'
      }
       data <- x$get()
       m <-solve(data,...)
       x$setinverse(m)
       m
}

## examplecode to test,
Mymatrix = makeCacheMatrix(matrix(1:4, nrow=2, ncol=2))
Mymatrix$get()
cacheSolve(Mymatrix)
## first time it returns the inverse without the comment
cacheSolve(Mymatrix)
## second time it returns it with the comment from Cachesolve


