## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## calling a function matrix

makeCacheMatrix <- function(x = Matrix()) {
  ## assigning null to m variable
  m<-NULL
 ## creating a function set
  set<function(y){
    x<<-y
    m<<-NULL
    
  }
  
  get <-function() x
 ## created a function setmatrix
  setmatrix <- function(matrix) m<<- matrix
 ## created a function getmatrix
 getmatrix<-function()m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
    
  }
  }

}


## Write a short comment describing this function
##created a function cacheSolve
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   m<-x$getmatrix()
  
   if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  
  data<-x$get()
  m<-matrix(data, ...)
  x$setmatrix(m)
  ##using ginv() to find the inverse of a matrix
  
  inv<-ginv(x)
  inv
  m
}

