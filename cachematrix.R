## Make a makeCacheMatrix function
	
makeCacheMatrix <- function(x = matrix()) {
	
## Initially set cache as null as nothing is in it
	
cache<-NULL
	
##store the matrix
	
setMatrix<-function(newValue){
x<<-newValue
cache<-NULL
}
	
##return the stored matrix
	
getMatrix<-function(){
    x
}
	
##cache the inverse
	
cacheInverse<-fuction(solve){
cache<-solve
	}
	
##get a cache value of the inverse
	
getInverse<-function(){
cache
	}
	
##return a list
	
list(setMatrix=setMatrix, getMatrix=getMatrix, cacheInverse=cacheInverse, getInverse=getInverse)
	}
	
## calculate the inverse of a matrix created in makeCacheMatrix() function
	
cacheSolve <- function(x, ...) {
	
## Return a inverse matrix 
	        
inverse<-y$getInverse()
	        
##if cache exist, return the value of the inverse
	        
if(!is.null(inverse)) {
message("getting cached data")        
return(inverse)
        }
	        
##otherwise consider the matrix, calculate the inverse and store it into cache
	        
data<-y$getMatrix()
inverse<-solve(data)
y$cacheInverse(inverse)
	        
## Return the inverse
	       
inverse
        }
}
