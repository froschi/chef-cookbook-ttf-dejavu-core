packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    ttf-dejavu-core
  /
when "precise"
  packages |= %w/
    ttf-dejavu-core
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
