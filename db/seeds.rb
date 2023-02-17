Provider.create! [{
  name:                   'Microsoft',
  issuer:                 'https://login.microsoftonline.com/d2f17455-673e-4168-aede-c31b83cf0a3b/v2.0',
  identifier:             'c6ca85c3-7aaa-4162-9bbc-ce4e69b492b7',
  secret:                 'VhrjtecSvQFT6CmybFLLsdf',
  scopes_supported:       [:openid, :profile, :email, 'User.Read'],
  authorization_endpoint: 'https://login.microsoftonline.com/d2f17455-673e-4168-aede-c31b83cf0a3b/oauth2/v2.0/authorize',
  token_endpoint:         'https://login.microsoftonline.com/d2f17455-673e-4168-aede-c31b83cf0a3b/oauth2/v2.0/token',
  userinfo_endpoint:      'https://graph.microsoft.com/me',
  jwks_uri:               'https://login.microsoftonline.com/d2f17455-673e-4168-aede-c31b83cf0a3b/discovery/v2.0/keys'
}]

Provider.create! [{
  name:                   'YearOne dev instance',
  issuer:                 'http://localhost:3000',
  identifier:             'yearonedev',
  secret:                 '12345secret',
  scopes_supported:       [:openid, :email],
  authorization_endpoint: 'http://localhost:3000/open_id/authorizations/new',
  token_endpoint:         'http://localhost:3000/open_id/tokens',
  userinfo_endpoint:      'http://localhost:3000/open_id/user_info',
  jwks_uri:               'http://localhost:3000/open_id/jwks.json'
}]
