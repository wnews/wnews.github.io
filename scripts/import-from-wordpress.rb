require "jekyll-import";

JekyllImport::Importers::WordPress.run({
  "dbname"   => ENV["DB_NAME"],
  "user"     => ENV["DB_USER"],
  "password" => ENV["DB_PASSWORD"],
  "host"     => ENV["DB_HOST"],
  "socket"   => "",
  "table_prefix"   => "wp_i1t52b_",
  "site_prefix"    => "",
  "clean_entities" => false,
  "comments"       => true,
  "categories"     => true,
  "tags"           => true,
  "more_excerpt"   => true,
  "more_anchor"    => true,
  "extension"      => "md",
  "status"         => ["publish"]
})
