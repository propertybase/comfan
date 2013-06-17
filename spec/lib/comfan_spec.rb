#encoding: utf-8
require 'spec_helper'

describe Comfan do
  subject{Comfan}

  describe '.api_id' do
    it 'returns the same ID for API ID' do
      input = '752S00000000KtkIAE'
      expect(subject.api_id(input)).to eq(input)
    end

    it 'returns the correct API ID for UI ID' do
      input = '752S00000000Ktk'
      output = '752S00000000KtkIAE'
      expect(subject.api_id(input)).to eq(output)
    end

    it 'returns nil for nil input' do
      expect(subject.api_id(nil)).to be_nil
    end
  end

  describe '.ui_id' do
    it 'returns the same ID for UI ID' do
      input = '752S00000000Ktk'
      expect(subject.ui_id(input)).to eq(input)
    end

    it 'returns the correct UI ID for API ID' do
      input = '752S00000000KtkIAE'
      output = '752S00000000Ktk'
      expect(subject.ui_id(input)).to eq(output)
    end

    it 'returns nil for nil input' do
      expect(subject.ui_id(nil)).to be_nil
    end
  end
end