require "screeen/version"
require 'tempfile'

module Screeen
  def self.capture opt={:type => :jpg}, &b

    tmp = Tempfile::new("cap_#{rand(36**8).to_s(36)}")
    type = (valid_type? opt[:type].to_s)? opt[:type].to_s : "jpg"
    pid = Process.spawn("screencapture -i -t#{type} #{tmp.path}")
    Process.waitpid(pid)

    begin
      open(tmp.path,"r"){|captured|  yield captured.read}
    ensure
      tmp.close
    end

  end

  private
  def self.valid_type? t
    ["pdf", "jpg", "tiff", "png"].include? t
  end
end
