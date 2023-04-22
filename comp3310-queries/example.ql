/**
 * @name Combinding Both Queries
 * @kind problem
 * @problem.severity warning
 * @id customID
 */

import java
from Method method, MethodAccess ma, MethodAccess ma2
where ma.getMethod() = method 
and method.getDeclaringType().hasName("Throwable") 
and method.hasName("getMessage") 
and ma.getParent() = ma2
and ma2.getMethod().getName() = "println"
select ma, "Found: " + ma + " within " + ma2
