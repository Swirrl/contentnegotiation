# Published under the MIT License http://www.opensource.org/licenses/mit-license.php
# Copyright (c) 2009, Swirrl IT Ltd., http://www.swirrl.com
#
class ResourcesController < ApplicationController


  def show


    if params[:format]
      # either the html or rdf representation has been asked for directly, so provide it
      respond_to do |format|
        format.html {render :template => 'resources/show.erb' }
        format.rdf {render :template => 'resources/show.rxml'} 
        # an alternative here is to call your own method to output the required RDF as a string
        # format.rdf {render  :text => my_method_to_make_rdf }
      end


    else
      # no format (file extension) specified, so the resource identifier has been requested. respond_to will look at HTTP Accept header
      # and do the appropriate redirect
      respond_to do |format|
        format.html {redirect_to :status=>303, :controller=>'resources', :action=>'show', :id=>params[:id], :format=>'html'}
        format.rdf  {redirect_to :status=>303, :controller=>'resources', :action=>'show', :id=>params[:id], :format=>'rdf'}   
      end

    end

  end
  
  
  
end