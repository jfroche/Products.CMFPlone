## Script (Python) "formatStx"
##bind container=container
##bind context=context
##bind namespace=
##bind script=script
##bind subpath=traverse_subpath
##parameters=text=''
##title=Structured Text Previews
##

# On discussions comments when you click on 'Preview' button
# There is an XMLRPC request to the server to get
# the rendered STX for a preview; saves a page load

from Products.PythonScripts.standard import structured_text
return structured_text(text)