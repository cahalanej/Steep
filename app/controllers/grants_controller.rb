

def search
  @grants = Grant.search params[:search]
end

