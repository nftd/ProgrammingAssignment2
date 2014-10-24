## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix() creates a list of functions that handles a matrix assigned to it
## cacheSolve() takes a list of functions created before in which handles a matrix and then calculate and save the inverse matrix

## Write a short comment describing this function

## makeCacheMatrix() creates a list of 4 functions:
## set() saves the matrix into a local variable called x and set to null the variable that saves the matrix inverse (m)
## get () returns the original matrix
## setinverse() saves the inverse matrix into a local variable called m
## getinverse() returns the inverse matrix


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(matr) m <<- matr
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse ,
             getinverse = getinverse )
}


## Write a short comment describing this function

##cacheSolve calculates the inverse of a matrix and then store it into the list provided
## by using the functions created in the previous function

cacheSolve <- function(x) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setinverse(m)
        m
}
