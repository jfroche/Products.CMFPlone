## Script (Python) "login_change_password"
##bind container=container
##bind context=context
##bind namespace=
##bind script=script
##bind subpath=traverse_subpath
##parameters=password
##title=Change a user's password upon initial login
##

mt = context.portal_membership
member=mt.getAuthenticatedMember()
try:
    mt.setPassword(password)
except AttributeError:
    context.plone_utils.addPortalMessage('While changing your password an AttributeError occurred.  This is usually caused by your user being defined outside the portal.')
    return state.set(status='failure')

from Products.CMFPlone import transaction_note
transaction_note('Changed password for %s' % (member.getUserName()))

return state
