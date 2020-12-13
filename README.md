# README

In console

```
User.find_or_create_by(email: 'asd@asd.asd') do |user|
  user.password = user.password_confirmation = 'asdasd'
end

app = Doorkeeper::Application.find_or_create_by(name: "Android client", redirect_uri: "", scopes: "")

client = OAuth2::Client.new(app.uid, app.secret, site: 'http://localhost:3002/oauth/token')

token = client.password.get_token('asd@asd.asd','asdasd')

response = token.get('/api/bookmarks')

JSON.parse response.body
# => {'bookmarks'=>[]}
```
