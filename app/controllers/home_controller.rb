class HomeController < ApplicationController
	def show
			
	end
	
	def import
		require 'roo'
		if params[:file].nil? || params[:file].empty?
			redirect_to import_home_index_path, danger: "Sheet not found."	
			
		else
		  spreadsheet = open_spreadsheet(params[:file])
		  header = spreadsheet.row(1)
		  @rows = []
		  (2..spreadsheet.last_row).each do |i|
		    row = Hash[[header, spreadsheet.row(i)].transpose]
		    @rows.push row
		  end
		  redirect_to import_home_index_path, notice: "Sheet imported."
		end
	end
	def open_spreadsheet file
		case File.extname(file.original_filename)
	  when ".csv" then Roo::Csv.new(file.path)
	  when ".xls" then Roo::Excel.new(file.path)
	  when ".xlsx" then Roo::Spreadsheet.open(file.path, extension: :xlsx)
	  else raise "Unknown file type: #{file.original_filename}"
	  end
	end

	def drive_fetch
		# require "rubygems"
		# require "google/api_client"
		# require "google_drive"

		# # Authorizes with OAuth and gets an access token.
		# client = Google::APIClient.new
		# auth = client.authorization
		# auth.client_id = "330457336466-uvgr6uhpabsdhmv34annlcva859rp8b2.apps.googleusercontent.com"
		# auth.client_secret = "s1f3AAJAImFJ3YbAqT0_NW0E"
		# auth.scope =
		#     "https://www.googleapis.com/auth/drive " +
		#     "https://spreadsheets.google.com/feeds/"
		# auth.redirect_uri = "localhost:3000/home/drive_fetch"
		# print("1. Open this page:\n%s\n\n" % auth.authorization_uri)
		# print("2. Enter the authorization code shown in the page: ")
		# auth.code = $stdin.gets.chomp
		# auth.fetch_access_token!
		# access_token = auth.access_token

		# # Creates a session.
		# session = GoogleDrive.login_with_oauth(access_token)

		# # Gets list of remote files.
		# for file in session.files
		#   p file.title
		# end

		# # Uploads a local file.
		# session.upload_from_file("/path/to/hello.txt", "hello.txt", :convert => false)

		# # Downloads to a local file.
		# file = session.file_by_title("hello.txt")
		# file.download_to_file("/path/to/hello.txt")

		# # Updates content of the remote file.
		# file.update_from_file("/path/to/hello.txt")

		# # Creates a session.
		# session = GoogleDrive.login_with_oauth(access_token)

		# # First worksheet of
		# # https://docs.google.com/spreadsheet/ccc?key=pz7XtlQC-PYx-jrVMJErTcg
		# ws = session.spreadsheet_by_key("pz7XtlQC-PYx-jrVMJErTcg").worksheets[0]

		# # Gets content of A2 cell.
		# p ws[2, 1]  #==> "hoge"

		# # Changes content of cells.
		# # Changes are not sent to the server until you call ws.save().
		# ws[2, 1] = "foo"
		# ws[2, 2] = "bar"
		# ws.save()

		# # Dumps all cells.
		# for row in 1..ws.num_rows
		#   for col in 1..ws.num_cols
		#     p ws[row, col]
		#   end
		# end

		# # Yet another way to do so.
		# p ws.rows  #==> [["fuga", ""], ["foo", "bar]]

		# # Reloads the worksheet to get changes by other clients.
		# ws.reload()

	end

end
