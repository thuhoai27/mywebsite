# frozen_string_literal: true
require "digest/md5"

Jekyll::Hooks.register :documents, :pre_render do |doc|
  next unless doc.data["title"] # 제목 없는 파일은 건너뜀
  doc.data["md5title"] = Digest::MD5.hexdigest(doc.data["title"].to_s)
end
