#!/usr/bin/env ruby
#
# Load image files from old gallery html document
# To use
# ruby import-gallery.rb ../lauran-kuuhaukku/<filehere>
#
require 'yaml'
require 'fileutils'

IMAGE_URL_FINDER = '<img border=\"\d\" src=\"(.*?)\"'
IMAGE_TEXT_FINDER = '>(.*?)<'

def to_slug(title)
  slugified = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
  jekylized = slugified.gsub(/_/, '-')
  jekylized
end

def make_image_directory(dirname)
  new_dir_name = "images/#{dirname}"
  p "Using directory: images/#{dirname}"
  Dir.mkdir(new_dir_name) unless File.exists? new_dir_name
end

def create_article_slug(filename)
  basename = File.basename(filename, ".*")
  slug = to_slug basename
end

def create_directory_for_images(article_slug)

  make_image_directory article_slug
end

def read_images_from_file(filename, article_slug)
  image_array = []
  image_file_list = []
  image_file_name = nil
  image_text = nil
  File.readlines(filename).each do |line|
    if !line.valid_encoding?
      line = line.encode("UTF-16be", :invalid => :replace, :replace => "AE").encode('UTF-8')
    end

    if line.include?('img')
      matcher = line.match(IMAGE_URL_FINDER)
      if matcher
        if !image_file_name.nil?
          # create empty text gallery entry, because we have new image without having found text!
          gallery_entry = "#{article_slug}/#{File.basename(image_file_name).downcase} : "
          image_array << gallery_entry
          image_file_list << "../lauran-kuuhaukku/#{image_file_name}"
        end

        image_file_name = matcher[1]
        image_text = nil
      end

    end

    if line.include?('p ')
      text_matcher = line.match(IMAGE_TEXT_FINDER)
      if text_matcher
        image_text = text_matcher[1]
      end
    end

    if !image_text.nil? && !image_file_name.nil?
      gallery_entry = "#{article_slug}/#{File.basename(image_file_name).downcase} : #{image_text}"
      image_array << gallery_entry
      image_file_list << "../lauran-kuuhaukku/#{image_file_name}"
      image_file_name = nil
      image_text = nil
    end

  end

  [image_array, image_file_list]
end

def write_gallery_file(filename, article_slug, images)

  p "writing frontmatter to #{filename}"
  open(filename, 'w') {|f|
    f << "---\n"
    f << "layout: kuvagalleria\n"
    f << "menu: kuvat\n"
    f << "permalink: #{article_slug}\n"
    f << "title: #{article_slug}\n"
    f << "linkin-pikkukuva: linkki-huskynaama.jpg\n"
    f << "linkin-teksti:\n"
    f << "\n"
    f << "kuvat:\n"
    images.each do |image_line|
      f << "    - #{image_line}\n"
    end
    f << "---\n"
  }
end

def end_front_matter(filename)
  open(filename, 'w') {|f|

  }
end

def copy_images_to_local_dir(image_file_list, article_slug)
  dir_name = "images/#{article_slug}"
  image_file_list.each do |file_name|
    image_file = File.basename file_name
    FileUtils.cp file_name, "#{dir_name}/#{image_file.downcase}"
  end
end

def load_images_from_old_file(filename)
  slug = create_article_slug(filename)
  create_directory_for_images(slug)
  image_array, image_file_list = read_images_from_file(filename, slug)

  filename = "artikkelit/#{slug}.md"
  if File.exists? filename
    raise("File already exists #{filename}")
  end
  write_gallery_file(filename, slug, image_array)

  copy_images_to_local_dir(image_file_list, slug)
end


def test
  # <cufontext>Jaanan </cufontext>
end

ARGV.each do |filename|
  load_images_from_old_file filename
end