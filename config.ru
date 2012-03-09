use Rack::Static, 
  :urls => ["/stylesheets", "/images", "/javascripts", "/blog.html", "/funeral.html", "/last_picture.html", "/obituary.html"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
