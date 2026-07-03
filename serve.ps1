$root = Join-Path $PSScriptRoot "b-eat-landing"
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:8737/")
$listener.Start()
Write-Host "Serving $root on http://localhost:8737/"
while ($listener.IsListening) {
  $context = $listener.GetContext()
  $path = $context.Request.Url.LocalPath.TrimStart('/')
  if ($path -eq "") { $path = "index.html" }
  $filePath = Join-Path $root $path
  if (Test-Path $filePath -PathType Leaf) {
    $bytes = [System.IO.File]::ReadAllBytes($filePath)
    $ext = [System.IO.Path]::GetExtension($filePath)
    $ct = switch ($ext) { ".html" {"text/html"} ".svg" {"image/svg+xml"} ".png" {"image/png"} ".jpg" {"image/jpeg"} default {"application/octet-stream"} }
    $context.Response.ContentType = $ct
    $context.Response.ContentLength64 = $bytes.Length
    $context.Response.OutputStream.Write($bytes, 0, $bytes.Length)
  } else {
    $context.Response.StatusCode = 404
  }
  $context.Response.OutputStream.Close()
}
