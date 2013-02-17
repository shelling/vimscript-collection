#!/usr/bin/env rake

PKG = [".vim", ".vimrc", ".gvimrc"]

task :default => [:install]

module Dotfiles
    class Installer

        def initialize(filename)
            @filename = filename
        end

        def source
            @source ||= File.expand_path("./#{@filename}")
        end

        def target
            @target ||= File.expand_path("~/#{@filename}")
        end

        def installed?
            File.identical? source, target
        end

        def install(options={:verbose => false})
            if installed?
                puts "#{@filename} has been installed, skip." if options[:verbose]
            else
                force_install unless installed?
                puts "install #{@filename}" if options[:verbose]
            end
        end

        def force_install(options={:verbose => false})
            File.symlink source, target
            puts "force install #{@filename}" if options[:verbose]
        end

        def uninstall(options={:verbose => false})
            File.unlink target
            puts "uninstall #{@filename}"
        end

    end
end

desc "install"
task :install do
    PKG.each do |file|
        Dotfiles::Installer.new(file).install :verbose => true
    end
end

namespace :install do
    desc "force install"
    task :force do
        PKG.end do |file|
            Dotfiles::Installer.new(file).force_install :verbose => true
        end
    end
end

desc "uninstall"
task :uninstall do
    PKG.each do |file|
        Dotfiles::Installer.new(file).uninstall :verbose => true
    end
end
