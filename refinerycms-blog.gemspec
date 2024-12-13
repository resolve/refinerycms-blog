# Encoding: utf-8

Gem::Specification.new do |s|
  s.name              = %q{refinerycms-blog}
  s.version           = %q{4.0.0}
  s.description       = %q{A really straightforward open source Ruby on Rails blog engine designed for integration with Refinery CMS.}
  s.summary           = %q{Ruby on Rails blogging engine for Refinery CMS.}
  s.email             = %q{info@refinerycms.com}
  s.homepage          = %q{http://refinerycms.com/blog}
  s.authors           = ['Philip Arndt', 'Uģis Ozols', 'Joe Sak']
  s.require_paths     = %w(lib)
  s.license           = %q{MIT}

  s.files             = Dir.glob("{lib,test}/**/*") + Dir.glob("*.{rdoc,md,txt}")
  s.test_files        = Dir.glob("test/**/*")

  # Runtime dependencies
  s.add_dependency    'refinerycms-core'
  s.add_dependency    'refinerycms-settings'
  s.add_dependency    'filters_spam'
  s.add_dependency    'acts-as-taggable-on'
  s.add_dependency    'seo_meta'
  s.add_dependency    'rails_autolink'
  s.add_dependency    'friendly_id'
  s.add_dependency    'globalize'
  s.add_dependency    'activemodel-serializers-xml'
  s.add_dependency    'responders'


  s.cert_chain = [File.expand_path('certs/parndt.pem', __dir__)]
  if $PROGRAM_NAME =~ /gem\z/ && ARGV.include?('build') && ARGV.include?(__FILE__)
    s.signing_key = File.expand_path('~/.ssh/gem-private_key.pem')
  end
end
