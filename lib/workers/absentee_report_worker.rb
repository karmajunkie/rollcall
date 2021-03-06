=begin
    OpenPHIN is an opensource implementation of the CDC guidelines for 
    a public health information network.
    
    Copyright (C) 2009  Texas Association of Local Health Officials

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

=end

class AbsenteeReportWorker < BackgrounDRb::MetaWorker
  set_worker_name :absentee_report_worker

  def create(args = nil)
    logger.warn("Creating new AbsenteeReportWorker")
  end

  def process_uploads
    logger.warn("Running AbsenteeReportWorker")
    RollcallDataImporter.process_uploads
  end
end

