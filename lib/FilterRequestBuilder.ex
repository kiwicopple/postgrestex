defmodule FilterRequestBuilder do
  def filter(req, column, value) do
    # Either filter in or filter out based on Self.negate_next.
  end

  def eq(req, column, value) do
    :todo
  end

  def neq(req, column, value) do
    :todo
  end

  def gt(req, column, value) do
    :todo
  end

  def lt(req, column, value) do
    :todo
  end

  def lte(req, column, value) do
    :todo
  end

  def is_(req, column, value) do
    :todo
  end

  def like(req, column, value) do
    :todo
  end

  def ilike(req, column, pattern) do
    :todo
  end

  def fts(req, column, query) do
    :todo
  end

  def plfts(req, column, query) do
    :todo
  end

  def phfts(req, column, query) do
    :todo
  end

  def wfts(req, column, query) do
    :todo
  end

  def in_(req, column, values) do
    :todo
  end

  def cs(req, column, value) do
    :todo
  end

  def cd(req, column, values) do
    :todo
  end

  def ov(req, column, values) do
    :todo
  end

  def sl(req, column, range) do
    :todo
  end

  def nxl(req, column, range) do
    :todo
  end

  def nxr(req, column, range) do
    :todo
  end

  def adj(req, column, range) do
    :todo
  end
end
