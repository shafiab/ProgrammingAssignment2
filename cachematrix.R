## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
{
    xInv<<-matrix(nrow=0,ncol=0)
    
    setMatrix <- function(y=matrix()) {    
      x <<- y
      xInv <<- matrix(nrow=0,ncol=0)
    }
    
    setInverse<- function(xInv1=matrix())
    {      
      xInv<<-xInv1
    }
    
   getInverse<- function()
   {     
     xInv
   }
   
   getMatrix<-function()
   {
     x
   }
 
   list(setMatrix=setMatrix,getMatrix=getMatrix,setInverse=setInverse, getInverse= getInverse)   
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  xInv<-x$getInverse()
  if (! ((nrow(xInv)==ncol(xInv)) && (nrow(xInv)==0)) )
  {
      message("getting cached matrix")
      return (xInv)
  }
  mat<-x$getMatrix()
  message("no cached matrix, creating new")
  xInv<-solve(mat)
  x$setInverse(xInv)
  xInv
}
